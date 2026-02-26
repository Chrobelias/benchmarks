(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len z) 1000))
(assert (>= (str.len x) 1000))

(assert (= (str.++ x z) (str.++ "39" y)))

(assert (str.in_re x (re.union (re.+ (str.to_re "75")) (re.union (re.range "3" "7") (str.to_re "15")))))
(assert (str.in_re y (re.++ (re.* (re.range "1" "8")) (re.union (str.to_re "136") (re.* (str.to_re "447"))))))
(assert (str.in_re z (re.* (re.* (re.union (re.range "2" "8") (str.to_re "9"))))))

(assert (< (+ (* 4 (str.len x)) (* (- 7) (str.len y)) (* 6 (str.len z))) 40))
(assert (>= (+ (str.to_int x) (* (- 7) (str.to_int y)) (- (str.to_int z))) 3))
(assert (= (+ (* 5 (str.to_int x)) (* 7 (str.to_int y)) (* (- 5) (str.to_int z))) 23))

(check-sat)