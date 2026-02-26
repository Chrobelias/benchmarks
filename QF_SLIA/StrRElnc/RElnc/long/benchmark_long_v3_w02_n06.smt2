(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len z) 1000))
(assert (>= (str.len y) 1000))

(assert (= (str.++ x z) (str.++ "86" y)))

(assert (str.in_re z (re.+ (re.union (re.+ (str.to_re "652")) (re.+ (re.range "6" "9"))))))
(assert (str.in_re x (re.union (re.range "4" "9") (re.++ (re.* (str.to_re "32")) (str.to_re "58")))))
(assert (str.in_re y (re.union (re.range "6" "9") (re.union (str.to_re "43") (re.+ (re.+ (re.range "3" "7")))))))

(assert (> (+ (* (- 5) (str.to_int x)) (* 8 (str.to_int y)) (- (str.to_int z))) 28))
(assert (>= (+ (* (- 10) (str.len x)) (* 6 (str.len y)) (* 7 (str.len z))) 82))

(check-sat)