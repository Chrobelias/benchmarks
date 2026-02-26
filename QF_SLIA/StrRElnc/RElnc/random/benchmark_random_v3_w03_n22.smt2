(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ x y) (str.++ "29" z)))

(assert (str.in_re y (re.+ (re.range "3" "5"))))
(assert (str.in_re z (re.* (re.union (re.range "0" "8") (re.union (str.to_re "61") (re.* (str.to_re "7")))))))
(assert (str.in_re x (re.union (re.++ (str.to_re "2") (str.to_re "470")) (re.* (re.range "0" "9")))))

(assert (> (+ (* 4 (str.len y)) (* (- 5) (str.to_int x)) (* (- 2) (str.to_int y)) (- (str.to_int z))) 37))
(assert (= (+ (* (- 7) (str.to_int x)) (* (- 3) (str.to_int y)) (* (- 9) (str.to_int z))) 96))

(check-sat)