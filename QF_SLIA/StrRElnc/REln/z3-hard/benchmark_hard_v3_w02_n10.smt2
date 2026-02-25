(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.++ (re.+ (str.to_re "41")) (re.++ (str.to_re "292") (str.to_re "22")))))
(assert (str.in_re y (re.++ (re.+ (str.to_re "995")) (str.to_re "859"))))
(assert (str.in_re z (re.* (re.++ (re.union (re.range "6" "8") (str.to_re "542")) (str.to_re "678")))))

(assert (= (+ (* 8 (str.len y)) (* (- 4) (str.len z)) (* (- 3) (str.to_int z))) 72))

(check-sat)