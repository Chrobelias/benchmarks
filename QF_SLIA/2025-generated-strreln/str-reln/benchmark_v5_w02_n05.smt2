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

(assert (str.in_re x (re.++ (re.* (str.to_re "8")) (re.+ (str.to_re "0")))))
(assert (str.in_re y (re.+ (re.+ (re.* (str.to_re "13"))))))
(assert (str.in_re z (re.++ (str.to_re "92") (re.++ (re.+ (str.to_re "156")) (str.to_re "28")))))
(assert (str.in_re a (re.++ (re.++ (str.to_re "53") (re.range "3" "5")) (re.+ (str.to_re "152")))))
(assert (str.in_re b (re.+ (re.* (re.++ (re.range "5" "8") (str.to_re "821"))))))

(assert (< (+ (* 2 (str.len a)) (* 9 (str.to_int y)) (* 5 (str.to_int b))) 39))

(check-sat)