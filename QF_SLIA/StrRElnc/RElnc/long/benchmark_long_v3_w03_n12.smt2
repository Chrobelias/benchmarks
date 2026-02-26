(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (= x (str.++ "35" "76" y z)))

(assert (str.in_re z (re.++ (str.to_re "8") (re.+ (str.to_re "11")))))
(assert (str.in_re x (re.+ (re.union (re.* (str.to_re "71")) (re.* (re.range "1" "9"))))))
(assert (str.in_re y (re.* (re.union (str.to_re "39") (re.union (str.to_re "892") (re.+ (re.range "1" "5")))))))

(assert (> (+ (* (- 2) (str.len x)) (str.len z)) 51))
(assert (= (+ (* (- 8) (str.len x)) (* 9 (str.len y)) (- (str.len z))) 67))
(assert (< (+ (* (- 6) (str.to_int y)) (* 7 (str.to_int z))) 20))

(check-sat)