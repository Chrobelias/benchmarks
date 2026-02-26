(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ x y) (str.++ "84" z)))

(assert (str.in_re z (re.* (re.+ (re.* (str.to_re "24"))))))
(assert (str.in_re x (re.+ (re.+ (re.++ (re.* (str.to_re "32")) (str.to_re "8"))))))
(assert (str.in_re y (re.union (re.+ (re.* (str.to_re "484"))) (re.+ (re.range "0" "5")))))

(assert (= (+ (* 7 (str.len z)) (- (str.to_int z))) 21))

(check-sat)