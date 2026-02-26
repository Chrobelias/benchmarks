(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ x y) (str.++ z "85")))

(assert (str.in_re z (re.+ (re.++ (str.to_re "3") (re.++ (re.+ (re.range "7" "9")) (re.range "2" "7"))))))
(assert (str.in_re x (re.+ (re.union (re.range "0" "9") (re.range "6" "9")))))
(assert (str.in_re y (re.union (re.range "1" "6") (re.+ (re.* (str.to_re "0"))))))

(assert (= (+ (* (- 9) (str.len x)) (* (- 9) (str.len y)) (* (- 3) (str.len z))) 43))
(assert (>= (+ (* (- 9) (str.to_int x)) (* (- 5) (str.to_int y)) (* (- 8) (str.to_int z))) 4))
(assert (= (+ (* 2 (str.to_int x)) (* 8 (str.to_int y)) (* (- 5) (str.to_int z))) 47))

(check-sat)