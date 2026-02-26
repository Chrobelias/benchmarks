(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len a) 1000))
(assert (>= (str.len x) 1000))

(assert (= (str.++ y x) (str.++ "84" z "88" a)))

(assert (str.in_re z (re.++ (re.* (str.to_re "949")) (re.* (str.to_re "129")))))
(assert (str.in_re x (re.++ (re.* (re.range "4" "9")) (re.+ (re.range "4" "8")))))
(assert (str.in_re y (re.union (str.to_re "84") (re.union (str.to_re "19") (re.+ (re.* (str.to_re "50")))))))
(assert (str.in_re a (re.union (re.union (str.to_re "2") (re.+ (re.range "2" "6"))) (str.to_re "5"))))

(assert (> (+ (* 6 (str.len a)) (* (- 10) (str.to_int x))) 92))

(check-sat)