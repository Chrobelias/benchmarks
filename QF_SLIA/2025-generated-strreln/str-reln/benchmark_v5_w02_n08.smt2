(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)
(declare-const b String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))
(assert (>= (str.to_int b) 0))

(assert (str.in_re x (re.++ (str.to_re "11") (re.++ (str.to_re "816") (re.* (str.to_re "89"))))))
(assert (str.in_re y (re.++ (re.* (str.to_re "78")) (re.++ (str.to_re "481") (str.to_re "612")))))
(assert (str.in_re z (re.* (str.to_re "6"))))
(assert (str.in_re a (re.union (str.to_re "634") (re.+ (str.to_re "4")))))
(assert (str.in_re b (re.* (re.+ (re.union (re.* (str.to_re "72")) (str.to_re "36"))))))

(assert (= (+ (* (- 7) (str.len x)) (* 7 (str.len a)) (* (- 4) (str.len b)) (* (- 7) (str.to_int x))) 70))

(check-sat)