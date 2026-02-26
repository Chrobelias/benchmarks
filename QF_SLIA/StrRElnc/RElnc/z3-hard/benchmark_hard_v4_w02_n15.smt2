(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (str.++ a z "28") (str.++ "65" y x)))

(assert (str.in_re z (re.union (str.to_re "60") (re.union (str.to_re "257") (re.union (re.+ (str.to_re "1")) (str.to_re "607"))))))
(assert (str.in_re x (re.++ (re.++ (re.* (re.range "2" "4")) (str.to_re "59")) (re.+ (re.range "0" "9")))))
(assert (str.in_re a (re.+ (re.+ (re.++ (re.* (re.range "5" "9")) (str.to_re "924"))))))
(assert (str.in_re y (re.union (str.to_re "17") (re.* (str.to_re "6")))))

(assert (> (+ (* (- 6) (str.len x)) (* (- 3) (str.to_int x)) (* (- 6) (str.to_int y)) (* 8 (str.to_int z)) (* (- 10) (str.to_int a))) 89))

(check-sat)